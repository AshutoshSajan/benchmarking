# HTTP benchmarking tool (wrk)

https://github.com/wg/wrk

## HTTP benchmarking tool (wrk) docker image

https://www.digitalocean.com/community/tutorials/how-to-benchmark-http-latency-with-wrk-on-ubuntu-14-04

## golang http server

https://stackoverflow.com/questions/46992030/how-to-set-up-https-on-golang-web-server

## Medium article

https://medium.com/@felipedutratine/intelligent-benchmark-with-wrk-163986c1587f

> ## `express`

wrk -t12 -c400 -d30s --latency http://127.0.0.1:3000
![image](https://user-images.githubusercontent.com/44765540/204584269-62d5f9ec-cc63-425b-a788-a905e0676a0b.png)

> ## `fastify`

wrk -t12 -c400 -d30s --latency http://127.0.0.1:4000
![image](https://user-images.githubusercontent.com/44765540/204584501-2a6b3daf-3a55-44ac-b979-63a45631981e.png)

> ## `golang`

wrk -t12 -c400 -d30s --latency http://127.0.0.1:5000
![image](https://user-images.githubusercontent.com/44765540/204583808-d8a61f7e-468c-411c-9497-54375c32bd2c.png)
