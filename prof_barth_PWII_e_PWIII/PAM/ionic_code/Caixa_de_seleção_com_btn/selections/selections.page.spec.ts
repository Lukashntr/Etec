import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { SelectionsPage } from './selections.page';

describe('SelectionsPage', () => {
  let component: SelectionsPage;
  let fixture: ComponentFixture<SelectionsPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectionsPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(SelectionsPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
