Pedir acesso troubleshooting

instalar pacotes de dev:

```
sudo apt-get update -y && \
  sudo apt-get dist-upgrade -y && \
  sudo apt-get install -y software-properties-common \
  tar \
  wget \
  gcc \
  make \
  gnupg2 \
  curl \
  git \
  build-essential
```
```
sudo apt-get install -y patch \
  gawk \
  g++ \
  gcc \
  autoconf \
  automake \
  bison \
  libc6-dev \
  libffi-dev \
  libgdbm-dev \
  libncurses5-dev \
  libsqlite3-dev \
  libtool \
  libyaml-dev \
  make \
  patch \
  pkg-config \
  sqlite3 \
  zlib1g-dev \
  libgmp-dev \
  libreadline-dev \
  libssl-dev
```

instalar rvm:

https://rvm.io/rvm/install

```
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```
* reiniciar a janela Ctrl + Shift + P = reload window

testear rvm 
```
rvm -v
```

tornar rmv executavel **ACHAR OUTRA SOLUCAO PQ QUANDO REINICIA O CONSOLE PARA DE FUNCIONAR**
```
source ~/.rvm/scripts/rvm
```

instalar versao ruby
```
rvm install ruby-2.6.5
```

colocar como padrao
```
rvm --default use 2.6.5
```
