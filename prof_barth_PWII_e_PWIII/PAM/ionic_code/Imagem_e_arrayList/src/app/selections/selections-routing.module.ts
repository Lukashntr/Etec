import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { SelectionsPage } from './selections.page';

const routes: Routes = [
  {
    path: '',
    component: SelectionsPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class SelectionsPageRoutingModule {}
