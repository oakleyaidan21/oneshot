export interface CoffeeType {
  id: number
  name: string
  origin: string
  roast_level: number
  roaster: string
}

export type CoffeeFormType = Omit<CoffeeType, 'id'>
