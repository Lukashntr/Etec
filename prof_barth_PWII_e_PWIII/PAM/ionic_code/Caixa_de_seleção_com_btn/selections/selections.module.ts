import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { SelectionsPageRoutingModule } from './selections-routing.module';

import { SelectionsPage } from './selections.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    SelectionsPageRoutingModule
  ],
  declarations: [SelectionsPage]
})
export class SelectionsPageModule {}
