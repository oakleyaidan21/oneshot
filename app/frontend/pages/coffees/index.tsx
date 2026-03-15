import { Head, Link, usePage } from "@inertiajs/react"
import { Fragment } from "react"
import Coffee from "./coffee"
import { CoffeeType } from "./types"
import { coffeesPath } from "@/routes"
import type { BreadcrumbItem } from "@/types"
import AppLayout from "@/layouts/app-layout"

interface IndexProps {
  coffees: CoffeeType[]
}

const breadcrumbs: BreadcrumbItem[] = [
  {
    title: "Coffees",
    href: coffeesPath(),
  },
]

export default function Index({ coffees }: IndexProps) {
  const { flash } = usePage()

  return (
    <AppLayout breadcrumbs={breadcrumbs}>
      <Head title="Coffees" />
      <div className="mx-auto w-full px-8 pt-8 md:w-2/3">
        {flash.notice && (
          <p className="mb-5 inline-block rounded-lg bg-green-50 px-3 py-2 font-medium text-green-500">
            {flash.notice}
          </p>
        )}
        <div className="flex items-center justify-between">
          <h1 className="text-4xl font-bold">Coffees</h1>
          <Link
            href="/coffees/new"
            className="block rounded-lg bg-blue-600 px-5 py-3 font-medium text-white"
          >
            New coffee
          </Link>
        </div>

        <div className="min-w-full">
          {coffees.map((coffee) => (
            <Fragment key={coffee.id}>
              <Coffee coffee={coffee} />
              <p>
                <Link
                  href={`/coffees/${coffee.id}`}
                  className="ml-2 inline-block rounded-lg bg-gray-100 px-5 py-3 font-medium"
                >
                  Show this coffee
                </Link>
              </p>
            </Fragment>
          ))}
        </div>
      </div>
    </AppLayout>
  )
}
