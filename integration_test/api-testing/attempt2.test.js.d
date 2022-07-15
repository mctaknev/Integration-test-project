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

// describe("Add to cart validation", () => {
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
//       const checkcart = await agent.get("/cart");
//       // .set("Cookie", `${cookies.name}=${cookies.value}`);
//       console.log("body", JSON.parse(checkcart.text).length);
//       // expect empty array
//       expect(JSON.parse(checkcart.text).length).toEqual(0);
//     } catch (e) {
//       console.log(e);
//     }
//   });

//   it("Get catalogue", async () => {
//     await agent
//       .post("./cart")
//       .expect(200)
//       .then((res) => {
//         expect(res.CookieAccessInfo).to.have.property("success", true);
//       });
//   });

//   // create cart using catalogue info\ View Cart ID passing APi
//   it("Cart view Passing", async () => {
//     const response = await request.get(
//       "/catalogue/510a0d7e-8e83-4193-b483-e27e09ddc34d"
//     );
//     console.log(response.body);
//     expect(response.status).toBe(200);
//   });

//   // check cart again it shoud be 1 nad the id should be created one

//   it("should validate cart items", async () => {
//     const access_info = CookieAccessInfo(); // can provide path, etc also...
//     const cookies = agent.jar.getCookie("logged_in", access_info);
//     const checkcart = await agent
//       .get("/cart")
//       .set("Cookie", `${cookies.name}=${cookies.value}`);
//     console.log("body", JSON.parse(checkcart.text).length);
//     // expect empty array
//     expect(JSON.parse(checkcart.text).length).toEqual(1);
//   });

//   // Order
//   it("should validate cart items / order ", async () => {
//     const access_info = CookieAccessInfo(); // can provide path, etc also...
//     const cookies = agent.jar.getCookie("log-out", access_info);
//     const checkcart = await agent.get("/order");
//     //   .set("Cookie", `${cookies.name}=${cookies.value}`);
//     console.log("body", JSON.parse(checkcart.text).length);
//     // expect empty array
//     expect(JSON.parse(checkcart.text).length).toEqual(0);
//   });

//   it("Order Api throws the Server Error", async () => {
//     const response = await request.get("/orders");
//     expect(response.status).toEqual(500);
//   });
//   it("it returns the appropriate response when the user is not found", async () => {
//     const access_info = CookieAccessInfo();
//     const cookies = agent.jar.getCookie("log-out", access_info);
//     const checklogin = await agent.get("/logout");
//     expect(500);
//   });
// });
