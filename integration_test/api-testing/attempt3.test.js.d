// const supertest = require("supertest");
// const HOST = "http://localhost";
// const { CookieAccessInfo } = require("cookiejar");

// let agent = null;

// const random = Math.floor(1000 + Math.random() * 9000);
// const userInfo = {
//   username: `ran${random}`,
//   password: `ran${random}`,
//   email: `ran${random}@ran.com`,
//   firstName: `ran${random}`,
//   lastName: `ran${random}`,
// };

// describe("Checkout validation", () => {
//   beforeAll(async () => {
//     try {
//       agent = supertest.agent(HOST);
//       //Do registration and login
//       const registration = await agent.post("/register").send(userInfo);
//     } catch {
//       console.log("Failed to create user");
//       //TOdo skip below test
//     }
//   });

//   it("should validate cart items", async () => {
//     const access_info = CookieAccessInfo(); // can provide path, etc also...
//     const cookies = agent.jar.getCookie("logged_in", access_info);
//     try {
//       const checkcart = await agent
//         .get("/cart")
//         .set("Cookie", `${cookies.name}=${cookies.value}`);
//       console.log("body", JSON.parse(checkcart.text).length);
//       // expect empty array
//       expect(JSON.parse(checkcart.text).length).toEqual(0);
//       // get catalogue

//       // get one catalogue info

//       // create cart using catalogue info\

//       // check cart again it shoud be 1 nad the id should be created one

//     } catch (e) {
//       console.log(e);
//     }
//   });
// });
