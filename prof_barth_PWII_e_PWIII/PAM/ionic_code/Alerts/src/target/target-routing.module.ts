import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { TargetPage } from './target.page';

const routes: Routes = [
  {
    path: '',
    component: TargetPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class TargetPageRoutingModule {}
