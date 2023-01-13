FROM golang:1.15.8-buster

WORKDIR /app

# COPY go.mod ./
# COPY go.sum ./

COPY . .

# RUN go mod download

# COPY *.go ./

RUN go build -o main main.go

CMD [ "/app/main" ]
