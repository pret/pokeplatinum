# Patching Meson

We make use of a locally-cloned installation of Meson rather than asking a user
to install it themselves via a package manager. This enables us to patch Meson
for features that are slated for an upcoming release or to customize
functionality that we otherwise find desirable.

## Rules for Patching

1. Patches for features must be applied from a commit from the upstream Meson
   repository: <https://github.com/mesonbuild/meson>. The content of the patch
   may be stripped down to remove changes to documentation, automated tests, etc.
2. When filing a PR to introduce your patch, provide a link to the commit or PR
   in Meson's upstream repository for tracking.
3. Patches which add new features *must* have a forward-path for merging into
   the main Meson release. This ensures that we do not bloat the set of patches
   that we apply.
4. Patches for bug-fixes or small changes to functionality suitable for our
   use-cases do not necessarily need links to upstream commits or PRs. Such
   changes should be small in scope. This is a bit on the gray side and subject
   to discretion from the maintainers, but it allows us to make changes to Meson
   that fit our use-case but may not align with Meson's own goals.

## Fetching a Patch

If you already have a PR filed to the upstream Meson repository, then you may
use `tools/scripts/fetch_meson_diff.sh` to pull the content of that PR into a
local patch. The script requires a single argument, which is the GitHub PR
number.

As an example, the following command would create
`subprojects/packagefiles/meson_patch/15402.patch`:

```bash
./tools/scripts/fetch_meson_diff.sh 15402
```

Before submitting any patches created using this script for review, you must
give the output file a meaningful name (that is, not just its PR ID). You may
also want to consider doctoring your patch, if it requires changes that are
present in the `master` branch of the Meson repository but not in our base
revision.

## Writing a Patch

Apply your changes to a clean, un-patched copy of the Meson installation.

1. Modify the `Makefile`:

```diff
$(MESON):
$(GIT) clone --depth=1 -b $(MESON_VER) https://github.com/mesonbuild/meson $(@D)
-	cd $(MESON_DIR) ; find ../packagefiles/meson_patch -name '*.patch' -exec $(GIT) apply {} \;
```

2. Remove your current installation:

```bash
rm -rf subprojects/meson-*
```

3. Run `make meson` to re-clone a fresh copy of the current base version.
4. Make your changes to the checkout and verify that they work as expected with
   a small toy-example. You likely won't be able to do this with the
   `pokeplatinum` build itself.
5. Stage the relevant changes with `git add`, then output them to a patch:

```bash
git diff HEAD > ../packagefiles/meson_patch/name-of-your-patch.patch
```

## Additional Considerations

1. Generally, prefix feature-patches with `feat-` and fix-patches with `fix-`.
   This helps us delineate the purpose of each patch at-a-glance.
2. Provide a comment as the first line of your patch-file which links to the
   upstream Meson PR, if any exists. The patch-fetching script will do this for
   you automatically.
