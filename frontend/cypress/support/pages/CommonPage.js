class CommonPage {

  go() {
    cy.visit('/')
  }
  
}

export default new CommonPage;