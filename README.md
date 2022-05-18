# basic

I currently think that the issue is related to the uWSGI config or some backend dependency since the thing also fails when doing it "locally".


Using the devcontainer in VSCode, I could reproduce the issue.

To get into the devcontainer, simply open the project in VSCode and use `Remote-Containers: Open Folder in Container...`.

Inside the devcontainer you can select the desired version of node. I usually used this command: `nvm install Gallium`. This will select the LTS version.

Inside `src/frontend` you can install and build the frontend by calling `yarn` and `yarn build` respectively. The last one will automatically create a new folder `public` in `src/backend`.

Then in the frontend you'll need to install `poetry`. The easiest way is simply calling `pipx install poetry`.

After that the python dependencies can be install by calling `poetry install`.

If you want to do any changes to the used dependencies, the current versions are stored inside of `pyproject.toml`.

After having install the python dependencies, the uWSGI server can be started with `./run-web.sh`.

The config for the uWSGI servers are in `uwsgi.ini`.
