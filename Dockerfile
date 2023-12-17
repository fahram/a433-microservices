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

# Mengekspos port 3001 agar dapat diakses dari luar container
EXPOSE 3001

# CMD digunakan untuk menentukan perintah default yang akan dijalankan ketika container dijalankan
CMD ["node", "index.js"]
