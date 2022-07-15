const supertest = require("supertest");
const HOST = "http://localhost";
const { CookieAccessInfo } = require("cookiejar");

let agent = null;

const random = Math.floor(1000 + Math.random() * 9000);
const userInfo = {
  username: `ran${random}`,
  password: `ran${random}`,
  email: `ran${random}@ran.com`,
  firstName: `ran${random}`,
  lastName: `ran${random}`,
};

describe("Process to validation", () => {
  beforeAll(async () => {
    try {
      agent = supertest.agent(HOST);
      //Do registration and login
      const registration = await agent.post("/register").send(userInfo);
    } catch {
      console.log("Failed to create user");
      //TOdo skip below test
    }
  });

  it("should validate cart items", async () => {
    const access_info = CookieAccessInfo(); // can provide path, etc also...
    const cookies = agent.jar.getCookie("logged_in", access_info);
    try {
      const checkcart = await agent.get("/cart");
      // .set("Cookie", `${cookies.name}=${cookies.value}`);
      console.log("body", JSON.parse(checkcart.text).length);
      // expect empty array
      expect(JSON.parse(checkcart.text).length).toEqual(0);
    } catch (e) {
      console.log(e);
    }
  });

  // get catalogue
  it("should validate create a cart", async () => {
    const access_info = CookieAccessInfo(); // can provide path, etc also...
    const cookies = agent.jar.getCookie("logged_in", access_info);
    const size = 6;
    // http://localhost/catalogue?page=1&size=6&tags=
    const catalogue = await agent
      .get(`/catalogue?page=1&size=${size}&tags=`)
      // .set("Cookie", `${cookies.name}=${cookies.value}`)
      .expect(200);
    const resp = JSON.parse(catalogue.text);

    console.log(catalogue.body);
    expect(resp.length).toEqual(size);

    const toAdd = resp[0].id;

    const createCartPayload = { id: toAdd };

    // create cart
    // http://localhost/cart
    const cardCreate = await agent
      .post(`/cart`)
      // .set("Cookie", `${cookies.name}=${cookies.value}`)
      .send(createCartPayload)
      .expect(201);
  });
  it("should validate newly added cart items", async () => {
    const access_info = CookieAccessInfo(); // can provide path, etc also...
    const cookies = agent.jar.getCookie("logged_in", access_info);
    try {
      const checkcart = await agent.get("/cart");
      // .set("Cookie", `${cookies.name}=${cookies.value}`);
      console.log("body", JSON.parse(checkcart.text).length);
      // expect empty array
      expect(JSON.parse(checkcart.text).length).toEqual(1);
    } catch (e) {
      console.log(e);
    }
  });
});
