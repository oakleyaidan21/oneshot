import { Head, Link, usePage } from '@inertiajs/react'
import Coffee from './coffee'
import { CoffeeType } from './types'

interface ShowProps {
  coffee: CoffeeType
}

export default function Show({ coffee }: ShowProps) {
  const { flash } = usePage()

  return (
    <>
      <Head title={`Coffee #${coffee.id}`} />

      <div className="mx-auto md:w-2/3 w-full px-8 pt-8">
        <div className="mx-auto">
          {flash.notice && (
            <p className="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-lg inline-block">
              {flash.notice}
            </p>
          )}

          <h1 className="font-bold text-4xl">Coffee #{coffee.id}</h1>

          <Coffee coffee={coffee} />

          <Link
            href={`/coffees/${coffee.id}/edit`}
            className="mt-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium"
          >
            Edit this coffee
          </Link>
          <Link
            href="/coffees"
            className="ml-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium"
          >
            Back to coffees
          </Link>
          <div className="inline-block ml-2">
            <Link
              href={`/coffees/${coffee.id}`}
              as="button"
              method="delete"
              className="mt-2 rounded-lg py-3 px-5 bg-gray-100 font-medium"
            >
              Destroy this coffee
            </Link>
          </div>
        </div>
      </div>
    </>
  )
}
