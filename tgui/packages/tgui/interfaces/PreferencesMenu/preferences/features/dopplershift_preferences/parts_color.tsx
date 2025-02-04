import {
  CheckboxInput,
  Feature,
  FeatureChoiced,
  FeatureToggle,
  FeatureTriColorInput,
} from '../base';
import { FeatureDropdownInput } from '../dropdowns';

export const has_snout: FeatureToggle = {
  name: 'Add Part: Snout',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds a snout to your character.
  `,
  component: CheckboxInput,
};

export const snout_color: Feature<string[]> = {
  name: 'Snout Color',
  component: FeatureTriColorInput,
};

export const has_horns: FeatureToggle = {
  name: 'Add Part: Horns',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds horns to your character.
  `,
  component: CheckboxInput,
};

export const horns_color: Feature<string[]> = {
  name: 'Horns Color',
  component: FeatureTriColorInput,
};

export const has_frills: FeatureToggle = {
  name: 'Add Part: Frills',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds frills to your character.
  `,
  component: CheckboxInput,
};

export const frills_color: Feature<string[]> = {
  name: 'Frills Color',
  component: FeatureTriColorInput,
};

export const tail_type: FeatureChoiced = {
  name: 'Add Part: Tail',
  category: 'GAMEPLAY',
  description: `
    Choose which tail to add to your character, if any.
  `,
  component: FeatureDropdownInput,
};

export const ear_type: FeatureChoiced = {
  name: 'Add Part: Ears',
  category: 'GAMEPLAY',
  description: `
    Choose which animal ears to add to your character, if any.
  `,
  component: FeatureDropdownInput,
};

export const tail_color: Feature<string[]> = {
  name: 'Tail Color',
  component: FeatureTriColorInput,
};

export const has_ears: FeatureToggle = {
  name: 'Add Part: Snout',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds fancy ears to your character.
  `,
  component: CheckboxInput,
};

export const ears_color: Feature<string[]> = {
  name: 'Ears Color',
  component: FeatureTriColorInput,
};

export const has_spines: FeatureToggle = {
  name: 'Add Part: Spines',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds spines to your character.
  `,
  component: CheckboxInput,
};

export const spines_color: Feature<string[]> = {
  name: 'Spines Color',
  component: FeatureTriColorInput,
};

export const has_caps: FeatureToggle = {
  name: 'Add Part: Snout',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds mushperson caps to your character.
  `,
  component: CheckboxInput,
};

export const caps_color: Feature<string[]> = {
  name: 'Caps Color',
  component: FeatureTriColorInput,
};

export const has_markings: FeatureToggle = {
  name: 'Add Part: Markings',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds bodymarkings to your character.
  `,
  component: CheckboxInput,
};

export const body_markings_color: Feature<string[]> = {
  name: 'Body Markings Color',
  component: FeatureTriColorInput,
};

export const has_moth_markings: FeatureToggle = {
  name: 'Add Part: Moth Markings',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds moth-style bodymarkings to your character.
  `,
  component: CheckboxInput,
};

export const moth_markings_color: Feature<string[]> = {
  name: 'Moth Markings Color',
  component: FeatureTriColorInput,
};

export const wing_type: FeatureChoiced = {
  name: 'Add Part: Wings',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds wings to your character.
  `,
  component: FeatureDropdownInput,
};

export const wings_color: Feature<string[]> = {
  name: 'Wings Color',
  component: FeatureTriColorInput,
};

export const has_moth_wings: FeatureToggle = {
  name: 'Add Part: Moth Wings',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds matrix-colored moth wings to your character.
  `,
  component: CheckboxInput,
};

export const has_antennae: FeatureToggle = {
  name: 'Add Part: Moth Antennae',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds moff antennae to your character.
  `,
  component: CheckboxInput,
};

export const antennae_color: Feature<string[]> = {
  name: 'Antennae Color',
  component: FeatureTriColorInput,
};

export const has_fluff: FeatureToggle = {
  name: 'Add Part: Fluff',
  category: 'GAMEPLAY',
  description: `
    When toggled, adds fluff to your character.
  `,
  component: CheckboxInput,
};
