# ==========================================
# Stage 1 - Build
# ==========================================
FROM node:22-alpine AS builder

WORKDIR /app

# Copia somente os arquivos de dependências
COPY package*.json ./

# Instala dependências de forma determinística
RUN npm ci

# Copia o restante da aplicação
COPY . .

# Executa o build
# Resultado:
# /app/dist
RUN npm run build


# # ==========================================
# # Stage 2 - Runtime
# # ==========================================
# FROM nginx:alpine

# # Remove o conteúdo padrão do nginx
# RUN rm -rf /usr/share/nginx/html/*

# # Configuração do nginx
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# # Copia somente o resultado do build
# COPY --from=builder /app/dist /usr/share/nginx/html

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]