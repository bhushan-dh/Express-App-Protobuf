FROM bhuvidh/testing-protobuf

# Create app directory
WORKDIR ./

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port and start the app
EXPOSE 3000
CMD [ "node", "main.js" ]
