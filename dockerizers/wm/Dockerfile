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
