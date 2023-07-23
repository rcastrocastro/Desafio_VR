import 'cypress-real-events/support';
import elements from '../config/elements_page';

class HomePage {
  accessForYou() {
    cy.get(elements.menuPraVoce).realHover();
    cy.get(elements.subMenuOnde).click();
  }

  mapShouldBeVisible() {
    cy.get(elements.mapa).should('be.visible');
  }

  textShouldBe(expectedText) {
    cy.get('button[id="buttonFiltrar"]').contains(expectedText)
  }
}

export default new HomePage;