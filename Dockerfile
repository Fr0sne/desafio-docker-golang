FROM golang:1.21 as build 

WORKDIR /usr/app

COPY . .

RUN go build -v -o ./main

FROM scratch

COPY --from=build /usr/app /usr/app

CMD [ "/usr/app/main" ]


