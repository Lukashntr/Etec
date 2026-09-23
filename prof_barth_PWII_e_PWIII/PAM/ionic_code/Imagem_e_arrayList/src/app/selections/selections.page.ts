import { Component, OnInit } from '@angular/core';
import { AlertService } from '../services/alert.service';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-selections',
  templateUrl: './selections.page.html',
  styleUrls: ['./selections.page.scss'],
})
export class SelectionsPage implements OnInit {


  item: any;
  check : boolean;
  isInderterminate: boolean; 

  constructor(private navCtrl: NavController) { } // fechamendo do construtor 

  ngOnInit(){
    this.item = [
      // Aros 
      {
        value: "Aro 16",
        ischecked: false,
        label: "Caixa 01",
        "img" : "../../assets/img/aro16.jpg"
      },
      {
        value: "Aro 18",
        ischecked : false,
        label: "Caixa 02" ,
        "img" : "../../assets/img/aro18.jpg"
      },
      {
        value: "Aro 20",
        ischecked : false,
        label: "Caixa 03",
        "img" : "../../assets/img/aro20.jpg"       
      },
      // Bancos 
      {
        value: "Banco de Tecido",
        ischecked : false,
        label: "Caixa 04",
        "img" : "../../assets/img/bancopano.jpg"            
      },
      {
        value: "Banco de Couro Sistetico",
        ischecked : false,
        label: "Caixa 05",
        "img" : "../../assets/img/bancocouro.jpg"      
      },
      {
        value: "Banco de Couro",
        ischecked : false,
        label: " Caixa 06",
        "img" : "../../assets/img/bancocourooriginal.jpg"          
      },
      {
        value: "Banco de Couro Claro",
        ischecked : false,
        label: "Caixa 07",
        "img" : "../../assets/img/bancocouroclaro.jpg"              
      },
      // Luzes
      {
        value: "Lampada Halogena",
        ischecked : false,
        label: "Caixa 08",
        "img" : "../../assets/img/halogena.jpg"            
      },
      {
        value: "Lampada Xenon",
        ischecked : false,
        label: "Caixa 09",
        "img" : "../../assets/img/xenon.jpg"      
      },
      {
        value: "Lampada Led",
        ischecked : false,
        label: "Caixa 10",
        "img" : "../../assets/img/led.jpg"          
      },
      {
        value: "Lampada Laser",
        ischecked : false,
        label: "Caixa 11",
        "img" : "../../assets/img/laser.jpg"              
      }
    ]; // fechamendo do aray list
  } // fechamendo do ngOinit 

  // função que escreve no console o estado eo nome da checkBox
  escreveConsole(item : any){
    console.log(" Estado da checkbox: " + item.detail.checked );
    console.log(" Nome da checkbox: " + item.detail.value);

  }

  // função para abrir a pagina.
  public openPage(pagina : string){
    this.navCtrl.navigateForward(`/${pagina}`);
  
  }

  checkEvent() // evento para seleção de checkBox 
  {
    const totalitens = this.item.length; // pego o tamanho do vetor(Array) item 
    let checked = 0; // se nao tem caixa marcada checked é 0

    this.item.map(obj =>
    {
      if(obj.ischecked) checked++; // incrementa numero de caixas marcadas 
    });

    if(checked > 0 && checked < totalitens)
    { // se se um item pelo menos está marcado enão todos
      this.isInderterminate= true;
      this.check = false;
    } else if (checked == totalitens){
      // se estão todos marcados 
      this.check = true;
      this.isInderterminate = false;
    } else {
      // se nenhum esta marcado 
      this.isInderterminate = false;
      this.check = false;
    }

  } // fechamendo do checkEvent
  
}// Fechamendo da classe selections
