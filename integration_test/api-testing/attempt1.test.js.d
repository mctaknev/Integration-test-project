// Integration Testing Referance

// - --------- I have been started working from scratch these are my attempts, i got failed -------- -

// - ------- finally apitest.test.js file code has got passed and for your kind refer. - ------

// describe("testing-server-routes", () => {
//   it("Get all users", async () => {
//     const response = await request.get("catalogue/size?tags=");
//     console.log(response.body);
//     console.log("Test_case Working Successful");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });

// // Registation Validation Testing

// describe("testing-register-api", () => {
//   it("Post Register- failure", async () => {
//     const response = await request.post("login").send({
//       username: "",
//       password: "",
//       email: "",
//       firstName: "",
//       lastName: "",
//     });
//     console.log(response.body);
//     console.log("test_case before Register");
//     //assertion
//     expect(response.status).toBe(500);
//   });
// });

// describe("testing-after-registered", () => {
//   it("Post Registation-Form-Successful", async () => {
//     const response = await request.post("card").send({
//       // username: "kamal",
//       // password: "@Hijk123",
//       // email: "kamal@gmail.com",
//       // firstName: "kamal",
//       // lastName: "kanth",
//     });
//     console.log(response.body);
//     console.log("test_case before Registered successfully");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });

// //Login and cart validation
// describe("Login", () => {
//   it("Get all users", async () => {
//     const response = await request.get("login");
//     console.log(response.body);
//     console.log("cart validation");
//     //assertion
//     expect(response.status).toBe();
//   });
// });
// // ---------------------------------------------------------

// describe("Login Details", () => {
//   it("Login Customer details Preview successfull", async () => {
//     const response = await request.get(
//       "customers/jtj8AqZ96l7g-gsiaIB6PYTI3JMcBaFB"
//     );
//     // .send({});
//     console.log(response.body);
//     console.log("Login Customer details Preview successfully");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });

// describe("Login after Cart view", () => {
//   it("Empty Cart", async () => {
//     const response = await request.get("cart");
//     console.log(response.body);
//     console.log("cart validation");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });

// // ---------------------------------------------------------

// describe("After login listing the product", () => {
//   it("Post on Cart", async () => {
//     const response = await request.post("cart");
//     console.log(response.body);
//     console.log("Product Listed successfully");
//     //assertion
//     expect(response.status).toEqual(200);
//   });
// });
// describe("testing-after-registered", () => {
//   it("Post Registation-Form-Successful", async () => {
//     const response = await request.post("card").send({
//       // username: "kamal",
//       // password: "@Hijk123",
//       // email: "kamal@gmail.com",
//       // firstName: "kamal",
//       // lastName: "kanth",
//     });
//     console.log(response.body);
//     console.log("test_case before Registered successfully");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });
// //Log-out Cart validation
// describe("Logout", () => {
//   it("Get all users", async () => {
//     const response = await request.get("cart");
//     console.log(response.body);
//     console.log("cart validation");
//     //assertion
//     expect(response.status).toBe(200);
//   });
// });

// describe("Login", () => {});
