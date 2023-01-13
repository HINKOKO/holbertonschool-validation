FROM golang:1.15.8-buster

WORKDIR /app

ADD go.mod go.sum ./
# COPY go.mod ./
# COPY go.sum ./

RUN go mod download

# COPY *.go ./
COPY . .

RUN go build -o ./bin/avatar .

# CMD [ "/docker-gs-ping" ]
