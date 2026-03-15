import { Head, Link } from '@inertiajs/react'
import Form from './form'
import type { CoffeeType } from './types'

interface NewProps {
  coffee: CoffeeType
}

export default function New({ coffee }: NewProps) {
  return (
    <>
      <Head title="New coffee" />

      <div className="mx-auto md:w-2/3 w-full px-8 pt-8">
        <h1 className="font-bold text-4xl">New coffee</h1>

        <Form
          coffee={coffee}
          method="post"
          action="/coffees"
          submitText="Create Coffee"
        />

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
