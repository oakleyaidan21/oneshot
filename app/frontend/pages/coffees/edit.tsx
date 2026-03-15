import { Head, Link } from '@inertiajs/react'
import Form from './form'
import type { CoffeeType } from './types'

interface EditProps {
  coffee: CoffeeType
}

export default function Edit({ coffee }: EditProps) {
  return (
    <>
      <Head title="Editing coffee" />

      <div className="mx-auto md:w-2/3 w-full px-8 pt-8">
        <h1 className="font-bold text-4xl">Editing coffee</h1>

        <Form
          coffee={coffee}
          action={`/coffees/${coffee.id}`}
          method="patch"
          submitText="Update Coffee"
        />

        <Link
          href={`/coffees/${coffee.id}`}
          className="ml-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium"
        >
          Show this coffee
        </Link>
        <Link
          href="/coffees"
          className="ml-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium"
        >
          Back to coffees
        </Link>
      </div>
    </>
  )
}
