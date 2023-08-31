export class SidebarItem {
  label: string;
  options?: string[];
  showDropdown?: boolean;

  constructor(label: string, options: string[], showDropdown: boolean) {
    this.label = label;
    this.options = options;
    this.showDropdown = showDropdown;
  }
}
