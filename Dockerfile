# Menggunakan base image dari Node.js versi 18 dengan alpine linux
FROM node:18-alpine as base

# Menetapkan direktori kerja di dalam container sebagai /app
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Membuat langkah tambahan dengan alias "production" berdasarkan tahap "base".
FROM base as production

# Mengatur variabel lingkungan NODE_ENV ke "production".
ENV NODE_ENV=production

# Menjalankan perintah npm ci untuk menginstall dependencies
RUN npm ci

# Menyalin seluruh konten dari direktori host ke dalam container
COPY . .

# Mengekspos port 3001 agar dapat diakses dari luar container
EXPOSE 3001

# CMD digunakan untuk menentukan perintah default yang akan dijalankan ketika container dijalankan
CMD ["node", "index.js"]
