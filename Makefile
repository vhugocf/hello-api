 GO_VERSION :=1.18
 
.PHONY: install-go init-go                                         ❶
 
setup: install-go init-go                                          ❷

build:
    go build -o api cmd/main.go
 
#TODO add MacOS support
 install-go:                                                        ❸
  wget "https://golang.org/dl/go$(GO_VERSION).linux-amd64.tar.gz"
  sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
  rm go$(GO_VERSION).linux-amd64.tar.gz
 
init-go:                                                           ❹
  echo 'export PATH=$$PATH:/usr/local/go/bin' >> $${HOME}/.bashrc
  echo 'export PATH=$$PATH:$${HOME}/go/bin' >> $${HOME}/.bashrc
