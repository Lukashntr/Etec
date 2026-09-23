import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { IonicModule } from '@ionic/angular';

import { TargetPage } from './target.page';

describe('TargetPage', () => {
  let component: TargetPage;
  let fixture: ComponentFixture<TargetPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TargetPage ],
      imports: [IonicModule.forRoot()]
    }).compileComponents();

    fixture = TestBed.createComponent(TargetPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  }));

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
