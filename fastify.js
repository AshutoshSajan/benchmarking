// Require the framework and instantiate it
const fastify = require('fastify')({ logger: true });

const PORT = 3001;

// Declare a route
fastify.get('/', async (request, reply) => {
  return { server: 'fastify' };
});

// Run the server!
const start = async () => {
  try {
    await fastify.listen({ port: PORT });
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();
