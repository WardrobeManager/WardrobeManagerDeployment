FROM golang:1.16-alpine AS builder

#git clone
WORKDIR /
RUN apk update && apk add git
RUN git clone https://trekcampy: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@github.com/WardrobeManager/WardrobeManagerMS.git
RUN cd WardrobeManagerMS && go mod download && go build -o WardrobeManagerMS cmd/server/main.go && pwd

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder WardrobeManagerMS/WardrobeManagerMS ./
RUN pwd
CMD ["./WardrobeManagerMS", "--logtostderr=true"]  
