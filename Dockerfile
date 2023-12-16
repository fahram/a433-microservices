# Menggunakan base image dari Node.js versi 14
FROM node:14

# Menetapkan direktori kerja di dalam container sebagai /app
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menjalankan perintah npm install untuk menginstall dependencies
RUN npm install

# Menyalin seluruh konten dari direktori host ke dalam container
COPY . .

# Mengekspos port 3000 agar dapat diakses dari luar container
EXPOSE 3000

# Menetapkan environment variable PORT dengan nilai 3000
ENV PORT=3000

# Menetapkan environment variable AMQP_URL dengan nilai "amqp://guest:guest@localhost:5672"
ENV AMQP_URL="amqp://guest:guest@localhost:5672"

# CMD digunakan untuk menentukan perintah default yang akan dijalankan ketika container dijalankan
CMD ["node", "index.js"]
