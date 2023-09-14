FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/Maxwellexcel/haki-md /root/haki-md
WORKDIR /root/haki-md/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
