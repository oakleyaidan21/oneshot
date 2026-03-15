import { Form as InertiaForm } from '@inertiajs/react'
import { type ComponentProps } from 'react'

import { CoffeeType } from './types'

type FormProps = Omit<ComponentProps<typeof InertiaForm>, 'children'> & {
  coffee: CoffeeType
  submitText: string
}

export default function Form({ coffee, submitText, ...formProps }: FormProps) {
  return (
    <InertiaForm
      transform={data => ({ coffee: data })}
      className="contents"
      {...formProps}
    >
      {({ errors, processing }) => (
        <>
          <div className="my-5">
            <label htmlFor="name">Name</label>
            <input
              type="text"
              name="name"
              id="name"
              defaultValue={coffee.name}
              className="block shadow rounded-md border border-gray-400 outline-none px-3 py-2 mt-2 w-full"
            />
            {errors.name && (
              <div className="text-red-500 px-3 py-2 font-medium">
                {errors.name.join(', ')}
              </div>
            )}
          </div>

          <div className="my-5">
            <label htmlFor="origin">Origin</label>
            <input
              type="text"
              name="origin"
              id="origin"
              defaultValue={coffee.origin}
              className="block shadow rounded-md border border-gray-400 outline-none px-3 py-2 mt-2 w-full"
            />
            {errors.origin && (
              <div className="text-red-500 px-3 py-2 font-medium">
                {errors.origin.join(', ')}
              </div>
            )}
          </div>

          <div className="my-5">
            <label htmlFor="roast_level">Roast level</label>
            <input
              type="number"
              name="roast_level"
              id="roast_level"
              defaultValue={coffee.roast_level}
              className="block shadow rounded-md border border-gray-400 outline-none px-3 py-2 mt-2 w-full"
            />
            {errors.roast_level && (
              <div className="text-red-500 px-3 py-2 font-medium">
                {errors.roast_level.join(', ')}
              </div>
            )}
          </div>

          <div className="my-5">
            <label htmlFor="roaster">Roaster</label>
            <input
              type="text"
              name="roaster"
              id="roaster"
              defaultValue={coffee.roaster}
              className="block shadow rounded-md border border-gray-400 outline-none px-3 py-2 mt-2 w-full"
            />
            {errors.roaster && (
              <div className="text-red-500 px-3 py-2 font-medium">
                {errors.roaster.join(', ')}
              </div>
            )}
          </div>

          <div className="inline">
            <button
              type="submit"
              disabled={processing}
              className="rounded-lg py-3 px-5 bg-blue-600 text-white inline-block font-medium cursor-pointer"
            >
              {submitText}
            </button>
          </div>
        </>
      )}
    </InertiaForm>
  )
}
