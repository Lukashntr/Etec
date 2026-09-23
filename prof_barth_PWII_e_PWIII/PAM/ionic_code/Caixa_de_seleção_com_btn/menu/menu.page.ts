import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.page.html',
  styleUrls: ['./menu.page.scss'],
})
export class MenuPage implements OnInit {

  constructor(private navCtrl: NavController) { }

  ngOnInit( ) {
    
  }

  // função para abrir a pagina.
  public openPage(pagina : string){
    this.navCtrl.navigateForward(`/${pagina}`);

  }
}
