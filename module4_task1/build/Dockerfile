FROM golang:1.15.8-buster

WORKDIR /app

COPY go.mod go.sum ./
# COPY go.mod ./
# COPY go.sum ./

RUN go mod download && go mod verify

# COPY *.go ./
COPY . .

RUN go build -v -o ./usr/local/bin/app ./...

CMD [ "app" ]
