import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-button',
  templateUrl: './button.page.html',
  styleUrls: ['./button.page.scss'],
})
export class ButtonPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  // metodo que escreve na console 
  // recebe como parametrô uma string

  public escreveConsole(a : string){
    console.log(a);

  }

}
