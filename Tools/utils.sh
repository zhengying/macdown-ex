# First, check for git in $PATH
hash git 2>/dev/null || { echo >&2 "Git required, not installed.  Aborting build number update script."; exit 0; }

# Build version (closest-tag-or-branch "-" commits-since-tag "-" short-hash dirty-flag)
function get_build_version() {
    echo $(git describe --tags --always --dirty=+)
}

# Use the latest tag for short version (expected tag format "vn[.n[.n]]")
# or if there are no tags, we make up version 0.0.<commit count>
function get_short_version() {
    LATEST_TAG=$(git describe --tags --match 'v*' --abbrev=0 2>/dev/null) || LATEST_TAG="HEAD"
    if [ "$LATEST_TAG" = "HEAD" ]; then
        COMMIT_COUNT=$(git rev-list --count HEAD)
        LATEST_TAG="0.0.$COMMIT_COUNT"
        COMMIT_COUNT_SINCE_TAG=0
    else
        COMMIT_COUNT_SINCE_TAG=$(git rev-list --count "${LATEST_TAG}..")
        LATEST_TAG=${LATEST_TAG##v} # Remove the "v" from the front of the tag
    fi

    if [ "$COMMIT_COUNT_SINCE_TAG" = "0" ]; then
        SHORT_VERSION="$LATEST_TAG"
    else
        local tools_dir=$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")
        local next_version=$(cat "$tools_dir/version.txt")
        SHORT_VERSION="${next_version}d${COMMIT_COUNT_SINCE_TAG}"
    fi
    echo "$SHORT_VERSION"
}

# Bundle version (commits-on-master[-until-branch "." commits-on-branch])
# Assumes that two release branches will not diverge from the same commit on master.
function get_bundle_version() {
    local head_ref
    head_ref=$(git symbolic-ref --quiet --short HEAD 2>/dev/null || echo "HEAD")

    local base_ref=""
    local candidate
    for candidate in master main origin/master origin/main; do
        if git rev-parse --verify --quiet "${candidate}^{commit}" >/dev/null; then
            base_ref="$candidate"
            break
        fi
    done

    if [ -z "$base_ref" ]; then
        git rev-list --count HEAD 2>/dev/null || echo "0"
        return
    fi

    if [ "$head_ref" = "$base_ref" ] || [ "$head_ref" = "${base_ref#origin/}" ]; then
        git rev-list --count HEAD 2>/dev/null || echo "0"
        return
    fi

    local merge_base
    merge_base=$(git merge-base HEAD "$base_ref" 2>/dev/null || echo "")
    if [ -z "$merge_base" ]; then
        git rev-list --count HEAD 2>/dev/null || echo "0"
        return
    fi

    local base_commit_count
    local branch_commit_count
    base_commit_count=$(git rev-list --count "$merge_base" 2>/dev/null || echo "0")
    branch_commit_count=$(git rev-list --count "${merge_base}..HEAD" 2>/dev/null || echo "0")

    if [ "$branch_commit_count" = "0" ]; then
        echo "$base_commit_count"
    else
        echo "${base_commit_count}.${branch_commit_count}"
    fi
}
