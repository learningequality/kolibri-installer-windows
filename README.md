# Kolibri Windows Installer

Repository for the Kolibri windows installer and launcher application


## Steps for making Windows installer releases

These are the steps how to do releases for the Kolibri Windows installer.  Note that this involves the [kolibri](https://github.com/learningequality/kolibri) repo.  

We are releasing `v1.3.1` as an example here.

1. Tag the `develop` branch as `v1.3.1` at `kolibri-installer-windows`
    1. Go to the [releases](https://github.com/learningequality/kolibri-installer-windows/releases/) page then `Draft a new release`.
    1. Put `v1.3.1` as the tag and title for the release.
    1. Select `develop` as the target for the release.
    1. Add the features or fixes in the description.
    1. Click on the `Publish release` when done.
1. Make a Pull Request (PR) at the `kolibri` repo pointing to the appropriate branch (example: `develop`).
    1. In that PR, set the `kolibri/docker/env.list/KOLIBRI_WINDOWS_INSTALLER_VERSION=v1.3.1` environment variable value.  This points the Kolibri source into our `v1.3.1` branch.
    1. Test the BuildKite built assets in that PR if no errors are encountered.
1. Merge the `kolibri` PR when tests for the Kolibri Windows installer passed.


## Release history

See https://github.com/learningequality/kolibri-installer-windows/releases

## Python versions

| Installer release | Kolibri versions | Python        |
| -----------------:| ----------------:|:--------------- |
| Untracked         | <0.4.6           | Python 2.7.10   |
| 1.0.0             | 0.4.6            | Python 2.7.13   |
| 1.1.0             | 0.6.1            | Python 2.7.13   |
| 1.1.1             | 0.7.1            | Python 2.7.13   |
| 1.1.2             | 0.9.1            | Python 2.7.13   |
| 1.2.0             | 0.10.x           | Python 3.4.3    |
| 1.2.1             | 0.11.x,<=0.12.2  | Python 3.4.3    |
| 1.3.0             | 0.12.3+          | Python 3.4.3    |
| 1.3.1             | 0.12.5+          | Python 3.4.3    |
