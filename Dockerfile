FROM node
# create an app folder in node image
WORKDIR /app

# COPY package.json package.json
# COPY package-lock.json package-lock.json

# instead of copying individually copy above two lines by below  line
COPY package*.json .

# run a command npm install
RUN npm install  

# //copy index.js to app's index.js if not create index.js otherwise copy 
# COPY index.js index.js 
# all files/folders will be copied with same name in app folde so we dont need to copy individually
COPY . .



CMD [ "node","index.js" ]