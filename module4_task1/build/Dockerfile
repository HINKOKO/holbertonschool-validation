FROM golang:1.15.8-buster

WORKDIR /app

# copies everything from root directory into /app
COPY . . 
# COPY go.mod go.sum ./
# COPY go.mod ./
# COPY go.sum ./

RUN go mod download


RUN go build -o /godocker

# EXPOSE 8080

CMD [ "/godocker" ]
