// Imports de Material o externos, agregar aqui
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

// Imports de material
import {
  MatToolbarModule,
  MatSidenavModule,
  MatCardModule
} from '@angular/material';

import { MatListModule } from '@angular/material/list';
/*
 * AÑADIR COMPONENTES CREADOS A PARTIR DE AQUI
 * TIP: AGREGAR AL ARREGLO DE "declarations" EN @NgModule, el nombre
 * de la clase exportada en el componente y se agrega automatico el import
*/

import { AppComponent } from './app.component';
// Componente de header para la aplicación
import { HeaderComponent } from './header/header.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { SidenavFixedComponent } from './Sidenav/sidenav.component';
import { FooterComponent } from './footer/footer.component';



@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    SidenavFixedComponent
  ],
  // Añadir modulos al arreglo de imports
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatSidenavModule,
    MatCardModule,
    MatListModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
