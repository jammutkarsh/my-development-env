
# My Development Environment

Instead of loading laptops with all sorts of packages, which can break each other's functionality.
Docker can be used.

Here is my flavor of the development environment. It's easy to beginner-friendly with some helpful features

## Installation

#### Pulling the image and running

```bash
  docker pull jammutkarsh/my-development-env
```

```bash
  cd your/working/dir
  docker run -d -t --mount type=bind,source="$(pwd)",target=/root/dir-name --name cont-name jammutkarsh/my-development-env
```

It is suggested that you change the *dir-name* and *cont-name* for easy management.

#### Building the image

```bash
  git pull https://github.com/JammUtkarsh/my-development-env
  cd my-development-env
  docker build -t image-name .
```

## After starting a container

After starting the container for the first time,
open *~/.zshrc* file in an editor you are comfortable with, remove this line.

```bash
plugins=(git)
```

And add these lines.

```bash
plugins=(
 git
 zsh-autosuggestions
 zsh-syntax-highlighting
)
```

#### Now you are good to go

[Docker Hub](https://hub.docker.com/r/jammutkarsh/my-development-env)
