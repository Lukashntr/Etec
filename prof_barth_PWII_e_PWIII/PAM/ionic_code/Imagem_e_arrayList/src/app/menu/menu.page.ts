import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.page.html',
  styleUrls: ['./menu.page.scss'],
})
export class MenuPage implements OnInit {

  constructor(private navCtrl: NavController) { }

  item : any; // objeto item para a iteração da lista 

  ngOnInit(){
    
    this.item = [
      {
        "id" : 1,
        "name" : "Peças",
        "path" : "selections",
        "icon" : "list-outline"
      }
    ]; // fechamento do array list
  }

  // função para abrir a pagina.
  public openPage(pagina : string){
    this.navCtrl.navigateForward(`/${pagina}`);

  }
}
