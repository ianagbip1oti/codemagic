FROM codemagic:base

RUN apt-get update \
 && apt-get install -y curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev openjdk-8-jdk

RUN git clone https://github.com/rbenv/rbenv.git /home/hacker/.rbenv \
 && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/hacker/.bashrc \
 && echo 'eval "$(rbenv init -)"' >> /home/hacker/.bashrc \
 && mkdir -p /home/hacker/.rbenv/plugins \
 && git clone https://github.com/rbenv/ruby-build.git /home/hacker/.rbenv/plugins/ruby-build \
 && git clone https://github.com/rbenv/rbenv-default-gems.git /home/hacker/.rbenv/plugins/rbenv-default-gems \
 && echo 'bundler' > /home/hacker/.rbenv/default-gems \
 && chown -R hacker:hacker /home/hacker/.rbenv

