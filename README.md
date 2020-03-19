# Github Pages "I just want to get on with it" edition

This set of scripts is to get you up and running a Jekyll based Github Pages, right here, right now.

## Bootstrapping

- [Create](https://github.com/join) a Github account
- [Log in](https://github.com/login) to Github
- [Create a Github repository](https://help.github.com/en/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll#creating-a-repository-for-your-site) - tl;dr:
	- a repository named `<username>.github.io` is hosted at `http(s)://<username>.github.io`
	- other repositories are hosted at `http(s)://<user>.github.io/<repository>`
- save in your repository root:
	-	[bootstrap-repository.sh](https://raw.githubusercontent.com/rdewaele/rdewaele.github.io/master/bootstrap-repository.sh)
	- [docker-compose.yaml](https://raw.githubusercontent.com/rdewaele/rdewaele.github.io/master/docker-compose.yaml)
	- [Gemfile.patch](https://raw.githubusercontent.com/rdewaele/rdewaele.github.io/master/Gemfile.patch)
- install docker
- run bootstrap script
	-	`./bootstrap-repository.sh user` if you named your repository `<username>.github.io`
	-	`./bootstrap-repository.sh project` otherwise
- docker-compose up
- visit http://localhost:4000

Note: These scripts have some hardcoded version numbers that will need to be adjusted whenever Github updates their [dependency versions](https://pages.github.com/versions). Feel free to open an issue if you notice the change before I did.
