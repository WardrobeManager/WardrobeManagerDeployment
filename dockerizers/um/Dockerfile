FROM golang:1.16-alpine AS builder

#git clone
WORKDIR /
RUN apk update && apk add git
RUN git clone https://trekcampy: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@github.com/WardrobeManager/UserManagerMS.git
RUN cd UserManagerMS && go mod download && go build -o UserManagerMS && pwd

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder UserManagerMS/UserManagerMS ./
RUN pwd
CMD ["./UserManagerMS", "--logtostderr=true"]  
