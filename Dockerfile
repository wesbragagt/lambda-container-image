FROM amazon/aws-lambda-nodejs:12
COPY app.js package.json package-lock.json ./
RUN  npm ci --silent
CMD ["app.lambdaHandler"]