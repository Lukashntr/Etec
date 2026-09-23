import { TestBed } from '@angular/core/testing';

import { PulapaginaService } from './pulapagina.service';

describe('PulapaginaService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: PulapaginaService = TestBed.get(PulapaginaService);
    expect(service).toBeTruthy();
  });
});
