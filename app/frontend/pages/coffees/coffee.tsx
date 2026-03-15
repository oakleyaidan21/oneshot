import { CoffeeType } from './types'

interface CoffeeProps {
  coffee: CoffeeType
}

export default function Coffee({ coffee }: CoffeeProps) {
  return (
    <div>
      <p className="my-5">
        <strong className="block font-medium mb-1">Name:</strong>
        {coffee.name?.toString()}
      </p>
      <p className="my-5">
        <strong className="block font-medium mb-1">Origin:</strong>
        {coffee.origin?.toString()}
      </p>
      <p className="my-5">
        <strong className="block font-medium mb-1">Roast level:</strong>
        {coffee.roast_level?.toString()}
      </p>
      <p className="my-5">
        <strong className="block font-medium mb-1">Roaster:</strong>
        {coffee.roaster?.toString()}
      </p>
    </div>
  )
}
