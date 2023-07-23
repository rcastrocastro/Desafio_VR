import common from '../support/pages/CommonPage';
import home from '../support/pages/HomePage';

describe('Deve acessar o subitem do navbar', () => {
  it('Deve validar o mapa do Google na tela', () => {
    common.go(); // abre o web site
    home.accessForYou(); // acessa o menu e o submenu
    home.mapShouldBeVisible(); // valida se o mapa está visivel

    const expectedText = 'Selecione um cartão VR...';
    home.textShouldBe(expectedText); // valida se contém o texto no mapa

    cy.screenshot('map') // pega a captura da tela.
  });
});