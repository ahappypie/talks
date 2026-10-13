---
class: py-6
---

# The Availability Table

<table class="w-full text-xs text-center border-collapse border border-gray-700">
  <thead>
    <tr class="bg-gray-800/80 text-gray-200">
      <th class="py-1.5 px-2 border border-gray-700 font-bold">Availability Level</th>
      <th colspan="6" class="py-1.5 px-2 border border-gray-700 font-bold">Allowed Downtime</th>
    </tr>
    <tr class="bg-gray-800/40 text-gray-300 font-semibold border-b border-gray-700">
      <th class="py-1 px-2 border border-gray-700 font-normal text-gray-400">SLA</th>
      <th class="py-1 px-2 border border-gray-700">Per Year</th>
      <th class="py-1 px-2 border border-gray-700">Per Quarter</th>
      <th class="py-1 px-2 border border-gray-700">Per Month</th>
      <th class="py-1 px-2 border border-gray-700">Per Week</th>
      <th class="py-1 px-2 border border-gray-700">Per Day</th>
      <th class="py-1 px-2 border border-gray-700">Per Hour</th>
    </tr>
  </thead>
  <tbody class="divide-y divide-gray-800">
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">90%</td>
      <td class="py-1 px-2 border border-gray-800">36.5 days</td>
      <td class="py-1 px-2 border border-gray-800">9 days</td>
      <td class="py-1 px-2 border border-gray-800">3 days</td>
      <td class="py-1 px-2 border border-gray-800">16.8 hours</td>
      <td class="py-1 px-2 border border-gray-800">2.4 hours</td>
      <td class="py-1 px-2 border border-gray-800">6 minutes</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">95%</td>
      <td class="py-1 px-2 border border-gray-800">18.25 days</td>
      <td class="py-1 px-2 border border-gray-800">4.5 days</td>
      <td class="py-1 px-2 border border-gray-800">1.5 days</td>
      <td class="py-1 px-2 border border-gray-800">8.4 hours</td>
      <td class="py-1 px-2 border border-gray-800">1.2 hours</td>
      <td class="py-1 px-2 border border-gray-800">3 minutes</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99%</td>
      <td class="py-1 px-2 border border-gray-800">3.65 days</td>
      <td class="py-1 px-2 border border-gray-800">21.6 hours</td>
      <td class="py-1 px-2 border border-gray-800">7.2 hours</td>
      <td class="py-1 px-2 border border-gray-800">1.68 hours</td>
      <td class="py-1 px-2 border border-gray-800">14.4 minutes</td>
      <td class="py-1 px-2 border border-gray-800">36 seconds</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99.5%</td>
      <td class="py-1 px-2 border border-gray-800">1.83 days</td>
      <td class="py-1 px-2 border border-gray-800">10.8 hours</td>
      <td class="py-1 px-2 border border-gray-800">3.6 hours</td>
      <td class="py-1 px-2 border border-gray-800">50.4 minutes</td>
      <td class="py-1 px-2 border border-gray-800">7.20 minutes</td>
      <td class="py-1 px-2 border border-gray-800">18 seconds</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99.9%</td>
      <td class="py-1 px-2 border border-gray-800">8.76 hours</td>
      <td class="py-1 px-2 border border-gray-800">2.16 hours</td>
      <td class="py-1 px-2 border border-gray-800">43.2 minutes</td>
      <td class="py-1 px-2 border border-gray-800">10.1 minutes</td>
      <td class="py-1 px-2 border border-gray-800">1.44 minutes</td>
      <td class="py-1 px-2 border border-gray-800">3.6 seconds</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99.95%</td>
      <td class="py-1 px-2 border border-gray-800">4.38 hours</td>
      <td class="py-1 px-2 border border-gray-800">1.08 hours</td>
      <td class="py-1 px-2 border border-gray-800">21.6 minutes</td>
      <td class="py-1 px-2 border border-gray-800">5.04 minutes</td>
      <td class="py-1 px-2 border border-gray-800">43.2 seconds</td>
      <td class="py-1 px-2 border border-gray-800">1.8 seconds</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99.99%</td>
      <td class="py-1 px-2 border border-gray-800">52.6 minutes</td>
      <td class="py-1 px-2 border border-gray-800">12.96 minutes</td>
      <td class="py-1 px-2 border border-gray-800">4.32 minutes</td>
      <td class="py-1 px-2 border border-gray-800">60.5 seconds</td>
      <td class="py-1 px-2 border border-gray-800">8.64 seconds</td>
      <td class="py-1 px-2 border border-gray-800">0.36 seconds</td>
    </tr>
    <tr>
      <td class="py-1 px-2 border border-gray-800 font-semibold text-gray-400">99.999%</td>
      <td class="py-1 px-2 border border-gray-800">5.26 minutes</td>
      <td class="py-1 px-2 border border-gray-800">1.30 minutes</td>
      <td class="py-1 px-2 border border-gray-800">25.9 seconds</td>
      <td class="py-1 px-2 border border-gray-800">6.05 seconds</td>
      <td class="py-1 px-2 border border-gray-800">0.87 seconds</td>
      <td class="py-1 px-2 border border-gray-800">0.04 seconds</td>
    </tr>
  </tbody>
</table>