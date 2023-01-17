FROM golang:1.15.8-buster
RUN git clone git@github.com:HINKOKO/holbertonschool-validation.git
WORKDIR /holbertonschool-validation/module4_task1
# install hugo
RUN curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb
RUN apt install ./install_hugo.deb

# copies everything from root directory into /app
# COPY . . 
# COPY go.mod go.sum ./
# COPY go.mod ./
# COPY go.sum ./
# RUN go mod download
# RUN go build -o /godocker

# EXPOSE 8080
# CMD [ "/godocker" ]
