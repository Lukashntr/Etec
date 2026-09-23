import { Injectable } from '@angular/core';
import { AlertController, NavController } from '@ionic/angular';

@Injectable({
  providedIn: 'root'
})
export class AlertService {

  // metodo contrutor da classe 
  constructor( private alertCtrl: AlertController, {
    }) // classe que permite a atibuição de alertas no codigo
  {}

  /*private navCtrl : NavController

    // função para abrir a pagina.
  public openPage(pagina : string){
    this.navCtrl.navigateForward(`/${pagina}`);

  }*/

  // metodo que exibe como um modal uma mensagem na tela do cliente 
  async mensagemOk(titulo: string, sub_titulo: string, mensagem: string, controle: string) 
  {
    const alert = await this.alertCtrl.create 
    (
      {
        header: titulo,
        subHeader: sub_titulo,
        message: mensagem,
        buttons: 
        [
          {
            text: 'OK',
            role: 'ok',
            handler: () => {}
          },
          {
            text: 'Cancel',
            handler: () => {console.log('hhaha')}, // impressão de mensagem no console
          }
        ],
      }
    );

    // Finalização do alert 
    await alert.present();
    const result = await alert.onDidDismiss();
    console.log(result);

  } // fechamento do metodo MensageOk



}// Fechamento da classe AlertService

