FROM ubuntu:20.04
# Getting the ubuntu base image, you may change it any distro you wanna run.
RUN apt update \
        && apt install git vim bat zsh curl wget -y
# zsh for faster(maybe, but not slower) and better experience.
RUN chsh -s /bin/zsh
# Line 8 means, changing shell to zsh
RUN cp /bin/batcat /bin/bat 
# another cool tool, a replacement for cat is bat(aka batcat)
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
        &&  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
        &&  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# Improvements to zsh with auto-complete and auto-suggestion.
RUN echo "echo  "Linux Is Better Than Windows"" >> /root/.zshrc
# Displaying my love  to the world!