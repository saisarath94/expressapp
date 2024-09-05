// test/app.test.js
const request = require('supertest');
const app = require('../app'); // Adjust the path if your app file is located elsewhere

describe('GET /', () => {
  it('should return status 200', async () => {
    const response = await request(app).get('/');
    expect(response.status).toBe(200);
  });
});
