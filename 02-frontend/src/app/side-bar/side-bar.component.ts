import { Component } from '@angular/core';
import { SidebarItem } from 'src/app/common/sidebar-item';

@Component({
  selector: 'app-side-bar',
  templateUrl: './side-bar.component.html',
  styleUrls: ['./side-bar.component.css']
})
export class SideBarComponent {
  sidebarItems: SidebarItem[] = [
    { label: 'Categories', options: ['Mens', 'Womens'] },
  ];

  toggleDropdown(item: SidebarItem): void {
    item.showDropdown = !item.showDropdown;
  }
}
